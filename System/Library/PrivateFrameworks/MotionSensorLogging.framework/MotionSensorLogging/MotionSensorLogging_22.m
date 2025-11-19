uint64_t CMMsl::GyroScaleEstimate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 80) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 64));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 80);
  if ((v10 & 8) == 0)
  {
    if ((*(v3 + 80) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = *(v3 + 72);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 80) & 1) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

  v11 = *(v3 + 76);
  this = PB::Writer::write(a2);
  v10 = *(v3 + 80);
  if ((v10 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    return this;
  }

LABEL_15:
  v13 = *(v3 + 56);

  return PB::Writer::write(a2, v13);
}

BOOL CMMsl::GyroScaleEstimate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    if ((*(a2 + 80) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 2) != 0)
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

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
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

  if ((*(a1 + 80) & 8) != 0)
  {
    if ((*(a2 + 80) & 8) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 4) != 0)
  {
    if ((*(a2 + 80) & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 4) != 0)
  {
    return 0;
  }

  v8 = (*(a2 + 80) & 1) == 0;
  if (*(a1 + 80))
  {
    return (*(a2 + 80) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v8;
}

uint64_t CMMsl::GyroScaleEstimate::hash_value(CMMsl::GyroScaleEstimate *this)
{
  if ((*(this + 80) & 2) != 0)
  {
    if (*(this + 8) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 8);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = PBHashBytes();
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = PBHashBytes();
  if ((*(this + 80) & 8) != 0)
  {
    v9 = *(this + 76);
    if ((*(this + 80) & 4) != 0)
    {
LABEL_8:
      v10 = *(this + 18);
      if (*(this + 80))
      {
        goto LABEL_9;
      }

LABEL_14:
      v11 = 0.0;
      return v5 ^ v2 ^ v8 ^ v9 ^ v10 ^ *&v11;
    }
  }

  else
  {
    v9 = 0;
    if ((*(this + 80) & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
  if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v11 = *(this + 7);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return v5 ^ v2 ^ v8 ^ v9 ^ v10 ^ *&v11;
}

uint64_t CMMsl::GyroTemperature::GyroTemperature(uint64_t this)
{
  *this = &unk_286C208F8;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_286C208F8;
  *(this + 16) = 0;
  return this;
}

void CMMsl::GyroTemperature::~GyroTemperature(CMMsl::GyroTemperature *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::GyroTemperature::GyroTemperature(uint64_t this, const CMMsl::GyroTemperature *a2)
{
  *this = &unk_286C208F8;
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

const CMMsl::GyroTemperature *CMMsl::GyroTemperature::operator=(const CMMsl::GyroTemperature *a1, const CMMsl::GyroTemperature *a2)
{
  if (a1 != a2)
  {
    CMMsl::GyroTemperature::GyroTemperature(v7, a2);
    v3 = *(a1 + 4);
    *(a1 + 4) = v10;
    v10 = v3;
    v4 = *(a1 + 3);
    *(a1 + 3) = v9;
    v9 = v4;
    v5 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::GyroTemperature *a2, CMMsl::GyroTemperature *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  return result;
}

float CMMsl::GyroTemperature::GyroTemperature(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C208F8;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

{
  *a1 = &unk_286C208F8;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

_DWORD *CMMsl::GyroTemperature::operator=(_DWORD *a1, _DWORD *a2)
{
  if (a1 != a2)
  {
    v10 = &unk_286C208F8;
    v3 = a2[4];
    a2[4] = 0;
    v4 = a2[3];
    v5 = a2[2];
    v6 = a1[4];
    a1[4] = v3;
    v13 = v6;
    v7 = a1[3];
    a1[3] = v4;
    v12 = v7;
    v8 = a1[2];
    a1[2] = v5;
    v11 = v8;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::GyroTemperature::formatText(CMMsl::GyroTemperature *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "location");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "temperature", *(this + 3));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::GyroTemperature::readFrom(CMMsl::GyroTemperature *this, PB::Reader *a2)
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
        *(this + 16) |= 1u;
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
              LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
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
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 2) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 3) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
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

uint64_t CMMsl::GyroTemperature::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 12));
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::GyroTemperature::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    if ((*(a2 + 16) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 16) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 1) == 0;
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::GyroTemperature::hash_value(CMMsl::GyroTemperature *this)
{
  if ((*(this + 16) & 2) != 0)
  {
    v3 = *(this + 3);
    v1 = LODWORD(v3);
    if (v3 == 0.0)
    {
      v1 = 0;
    }

    if (*(this + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 2);
  return v2 ^ v1;
}

uint64_t CMMsl::HIDShower::HIDShower(uint64_t this)
{
  *this = &unk_286C20930;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C20930;
  *(this + 20) = 0;
  return this;
}

void CMMsl::HIDShower::~HIDShower(CMMsl::HIDShower *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::HIDShower::HIDShower(uint64_t this, const CMMsl::HIDShower *a2)
{
  *this = &unk_286C20930;
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
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::HIDShower::operator=(uint64_t a1, const CMMsl::HIDShower *a2)
{
  if (a1 != a2)
  {
    CMMsl::HIDShower::HIDShower(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::HIDShower *a2, CMMsl::HIDShower *a3)
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
  return result;
}

double CMMsl::HIDShower::HIDShower(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20930;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C20930;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::HIDShower::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C20930;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::HIDShower::formatText(CMMsl::HIDShower *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "inShower");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HIDShower::readFrom(CMMsl::HIDShower *this, PB::Reader *a2)
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
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
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

        *(this + 16) = v23;
      }

      else if ((v10 >> 3) == 1)
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
      }

      else
      {
LABEL_24:
        if (!PB::Reader::skip(a2))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
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

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::HIDShower::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::HIDShower::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::HIDShower::hash_value(CMMsl::HIDShower *this)
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
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 16);
  return v2 ^ *&v1;
}

uint64_t CMMsl::HapticModuleState::HapticModuleState(uint64_t this)
{
  *this = &unk_286C20968;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_286C20968;
  *(this + 20) = 0;
  return this;
}

void CMMsl::HapticModuleState::~HapticModuleState(CMMsl::HapticModuleState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::HapticModuleState::HapticModuleState(uint64_t this, const CMMsl::HapticModuleState *a2)
{
  *this = &unk_286C20968;
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
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::HapticModuleState::operator=(uint64_t a1, const CMMsl::HapticModuleState *a2)
{
  if (a1 != a2)
  {
    CMMsl::HapticModuleState::HapticModuleState(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::HapticModuleState *a2, CMMsl::HapticModuleState *a3)
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
  return result;
}

double CMMsl::HapticModuleState::HapticModuleState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20968;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C20968;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::HapticModuleState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C20968;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::HapticModuleState::formatText(CMMsl::HapticModuleState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 16);
    PB::TextFormatter::format(a2, "hapticOn");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HapticModuleState::readFrom(CMMsl::HapticModuleState *this, PB::Reader *a2)
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
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
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

        *(this + 16) = v23;
      }

      else if ((v10 >> 3) == 1)
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
      }

      else
      {
LABEL_24:
        if (!PB::Reader::skip(a2))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
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

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::HapticModuleState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::HapticModuleState::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::HapticModuleState::hash_value(CMMsl::HapticModuleState *this)
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
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 16);
  return v2 ^ *&v1;
}

uint64_t CMMsl::HarmonicMetrics::HarmonicMetrics(uint64_t this)
{
  *this = &unk_286C209A0;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C209A0;
  *(this + 44) = 0;
  return this;
}

void CMMsl::HarmonicMetrics::~HarmonicMetrics(CMMsl::HarmonicMetrics *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::HarmonicMetrics::HarmonicMetrics(CMMsl::HarmonicMetrics *this, const CMMsl::HarmonicMetrics *a2)
{
  *this = &unk_286C209A0;
  *(this + 11) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    if ((*(a2 + 44) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  result = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 44);
LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 4);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 44);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = *(a2 + 6);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_18:
    result = *(a2 + 9);
    *(this + 44) = v3 | 0x40;
    *(this + 9) = result;
    return result;
  }

LABEL_17:
  result = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 44) = v3;
  *(this + 8) = result;
  if ((*(a2 + 44) & 0x40) != 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t CMMsl::HarmonicMetrics::operator=(uint64_t a1, const CMMsl::HarmonicMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::HarmonicMetrics::HarmonicMetrics(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    *&v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::HarmonicMetrics *a2, CMMsl::HarmonicMetrics *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

float CMMsl::HarmonicMetrics::HarmonicMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C209A0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

{
  *a1 = &unk_286C209A0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 36);
  *(a1 + 36) = result;
  return result;
}

uint64_t CMMsl::HarmonicMetrics::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 8);
    v15 = *(a1 + 44);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v6 = *(a2 + 40);
    v11[0] = &unk_286C209A0;
    v11[1] = v5;
    v14 = *(a1 + 40);
    v7 = *(a2 + 16);
    v12 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    *(a1 + 44) = v3;
    *(a1 + 40) = v6;
    *(a1 + 16) = v7;
    *(a1 + 32) = v9;
    v13 = v8;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::HarmonicMetrics::formatText(CMMsl::HarmonicMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "stepIndexOfHarmonicityAP", *(this + 4));
    v5 = *(this + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityML", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityVT", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityAP", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityML", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityVT", *(this + 9));
  v5 = *(this + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "thetaAPDirRad", *(this + 10));
  if (*(this + 44))
  {
LABEL_9:
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "timestamp");
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HarmonicMetrics::readFrom(CMMsl::HarmonicMetrics *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_58:
            *(a2 + 24) = 1;
            goto LABEL_74;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_68;
        }

        if (v22 == 8)
        {
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_58;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_68;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_58;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_68;
        }

        if (v22 == 6)
        {
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_58;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_68;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 44) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_58;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_68;
      }

      if (v22 == 4)
      {
        *(this + 44) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_58;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_68;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 44) |= 1u;
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
              goto LABEL_73;
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
              goto LABEL_72;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_72:
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

LABEL_73:
        *(this + 1) = v27;
        goto LABEL_74;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 0x80u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_58;
        }

        *(this + 10) = *(*a2 + v2);
LABEL_68:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_74;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_74:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::HarmonicMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 44);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 44) & 0x80) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 32));
    if ((*(v3 + 44) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v6 = *(v3 + 36);

  return PB::Writer::write(a2, v6);
}

BOOL CMMsl::HarmonicMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  v3 = *(a2 + 44);
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

  if ((v3 & v2 & 0x80) != 0)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (((v3 | v2) & 0x80) != 0)
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

  v4 = (v3 & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return v4;
}

uint64_t CMMsl::HarmonicMetrics::hash_value(CMMsl::HarmonicMetrics *this)
{
  if ((*(this + 44) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 44) & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    v3 = 0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    v5 = 0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_27:
    v7 = 0;
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    v9 = 0;
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v11 = 0;
    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  v1 = *(this + 1);
  if ((*(this + 44) & 0x80) == 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  v2 = *(this + 10);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_27;
  }

LABEL_9:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v8 = *(this + 6);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v10 = *(this + 7);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((*(this + 44) & 0x20) != 0)
  {
LABEL_18:
    v12 = *(this + 8);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v15 = 0;
    return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
  }

LABEL_30:
  v13 = 0;
  if ((*(this + 44) & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v14 = *(this + 9);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
}

double CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::HeadToHeadsetAttitudeEstimatorMeasurementUpdate(CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *this)
{
  *this = &unk_286C209D8;
  *(this + 21) = 0;
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
  *this = &unk_286C209D8;
  *(this + 21) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

void CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::~HeadToHeadsetAttitudeEstimatorMeasurementUpdate(CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *this)
{
  *this = &unk_286C209D8;
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
  CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::~HeadToHeadsetAttitudeEstimatorMeasurementUpdate(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::HeadToHeadsetAttitudeEstimatorMeasurementUpdate(CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *this, const CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *a2)
{
  *this = &unk_286C209D8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 21) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  if ((*(a2 + 86) & 0x10) != 0)
  {
    v7 = *(a2 + 17);
    *(this + 86) = 16;
    *(this + 17) = v7;
    v6 = 272;
    if ((*(a2 + 86) & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 256;
  if ((*(a2 + 86) & 0x100) != 0)
  {
LABEL_5:
    v8 = *(a2 + 42);
    *(this + 86) = v6;
    *(this + 42) = v8;
  }

LABEL_6:
  if (this != a2)
  {
    sub_25AD285D4(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
    sub_25AD285D4(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  v9 = *(a2 + 86);
  if ((v9 & 2) != 0)
  {
    v10 = *(a2 + 14);
    *(this + 86) |= 2u;
    *(this + 14) = v10;
    v9 = *(a2 + 86);
  }

  if (v9)
  {
    v11 = *(a2 + 13);
    *(this + 86) |= 1u;
    *(this + 13) = v11;
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v12 = *(a2 + 86);
  if ((v12 & 0x80) != 0)
  {
    v15 = *(a2 + 20);
    *(this + 86) |= 0x80u;
    *(this + 20) = v15;
    v12 = *(a2 + 86);
    if ((v12 & 0x20) == 0)
    {
LABEL_16:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 18);
  *(this + 86) |= 0x20u;
  *(this + 18) = v16;
  v12 = *(a2 + 86);
  if ((v12 & 0x40) == 0)
  {
LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v18 = *(a2 + 16);
    *(this + 86) |= 8u;
    *(this + 16) = v18;
    if ((*(a2 + 86) & 4) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_23:
  v17 = *(a2 + 19);
  *(this + 86) |= 0x40u;
  *(this + 19) = v17;
  v12 = *(a2 + 86);
  if ((v12 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v12 & 4) != 0)
  {
LABEL_19:
    v13 = *(a2 + 15);
    *(this + 86) |= 4u;
    *(this + 15) = v13;
  }

  return this;
}

CMMsl *CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::operator=(CMMsl *a1, const CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::HeadToHeadsetAttitudeEstimatorMeasurementUpdate(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::~HeadToHeadsetAttitudeEstimatorMeasurementUpdate(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *a2, CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *a3)
{
  v3 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v3;
  v4 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  v5 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v5;
  v6 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  v8 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  v13 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v13;
  v14 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v14;
  v15 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v15;
  v16 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v16;
  v17 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v17;
  v18 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v18;
  v19 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v19;
  v20 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v20;
  v21 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v21;
  v22 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v22;
  v23 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v23;
  result = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = result;
  return result;
}

uint64_t CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::HeadToHeadsetAttitudeEstimatorMeasurementUpdate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C209D8;
  *(a1 + 168) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 172) = *(a2 + 172);
  *(a2 + 172) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 168) = *(a2 + 168);
  sub_25AD28758(a1 + 80, (a2 + 80));
  sub_25AD28758(v5, (a2 + 56));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

CMMsl *CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::HeadToHeadsetAttitudeEstimatorMeasurementUpdate(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::~HeadToHeadsetAttitudeEstimatorMeasurementUpdate(v5);
  }

  return a1;
}

uint64_t CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::formatText(CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 86);
  if (v5)
  {
    PB::TextFormatter::format(a2, "covTraceAfterCorrection", *(this + 13));
    v5 = *(this + 86);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "covTraceBeforeCorrection", *(this + 14));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "dX", v8);
  }

  v9 = *(this + 86);
  if ((v9 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "lastStateTimestamp", *(this + 15));
    v9 = *(this + 86);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "lidAngleDeg", *(this + 16));
  if ((*(this + 86) & 0x100) != 0)
  {
LABEL_10:
    v10 = *(this + 42);
    PB::TextFormatter::format(a2, "measurementUpdateType");
  }

LABEL_11:
  v11 = *(this + 4);
  v12 = *(this + 5);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "residual", v13);
  }

  v14 = *(this + 7);
  v15 = *(this + 8);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "stateQfbAfterCorrection", v16);
  }

  v17 = *(this + 10);
  v18 = *(this + 11);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(a2, "stateQfbBeforeCorrection", v19);
  }

  v20 = *(this + 86);
  if ((v20 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 17));
    v20 = *(this + 86);
    if ((v20 & 0x20) == 0)
    {
LABEL_19:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }
  }

  else if ((v20 & 0x20) == 0)
  {
    goto LABEL_19;
  }

  PB::TextFormatter::format(a2, "wAuxBudNormMeanDps", *(this + 18));
  v20 = *(this + 86);
  if ((v20 & 0x40) == 0)
  {
LABEL_20:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "wAuxFaceNormMeanDps", *(this + 19));
  if ((*(this + 86) & 0x80) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(a2, "wSrcNormMeanDps", *(this + 20));
  }

LABEL_22:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::readFrom(CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_207;
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
          *(this + 86) |= 0x10u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 17) = *(*a2 + v23);
          goto LABEL_202;
        case 2u:
          *(this + 86) |= 0x100u;
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
                goto LABEL_185;
              }

              v79 += 7;
              ++v83;
              v14 = v80++ > 8;
            }

            while (!v14);
LABEL_145:
            LODWORD(v81) = 0;
            goto LABEL_185;
          }

          v109 = 0;
          v110 = 0;
          v81 = 0;
          v111 = (v78 + v77);
          v18 = v76 >= v77;
          v112 = v76 - v77;
          if (!v18)
          {
            v112 = 0;
          }

          v113 = v77 + 1;
          while (2)
          {
            if (v112)
            {
              v114 = *v111;
              *(a2 + 1) = v113;
              v81 |= (v114 & 0x7F) << v109;
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

LABEL_185:
          *(this + 42) = v81;
          goto LABEL_203;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_209;
            }

            v28 = *(a2 + 1);
            v29 = *(a2 + 2);
            while (v28 < v29 && (*(a2 + 24) & 1) == 0)
            {
              v31 = *(this + 11);
              v30 = *(this + 12);
              if (v31 >= v30)
              {
                v33 = *(this + 10);
                v34 = v31 - v33;
                v35 = (v31 - v33) >> 3;
                v36 = v35 + 1;
                if ((v35 + 1) >> 61)
                {
                  goto LABEL_211;
                }

                v37 = v30 - v33;
                if (v37 >> 2 > v36)
                {
                  v36 = v37 >> 2;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v38 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  sub_25AD28710(v38);
                }

                v39 = (v31 - v33) >> 3;
                v40 = (8 * v35);
                v41 = (8 * v35 - 8 * v39);
                *v40 = 0;
                v32 = v40 + 1;
                memcpy(v41, v33, v34);
                v42 = *(this + 10);
                *(this + 10) = v41;
                *(this + 11) = v32;
                *(this + 12) = 0;
                if (v42)
                {
                  operator delete(v42);
                }
              }

              else
              {
                *v31 = 0;
                v32 = v31 + 8;
              }

              *(this + 11) = v32;
              v43 = *(a2 + 1);
              if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(a2 + 2))
              {
                goto LABEL_132;
              }

              *(v32 - 1) = *(*a2 + v43);
              v29 = *(a2 + 2);
              v28 = *(a2 + 1) + 8;
              *(a2 + 1) = v28;
            }

LABEL_133:
            PB::Reader::recallMark();
            goto LABEL_203;
          }

          v105 = *(this + 11);
          v104 = *(this + 12);
          if (v105 < v104)
          {
            *v105 = 0;
            v106 = v105 + 8;
LABEL_188:
            *(this + 11) = v106;
LABEL_198:
            v159 = *(a2 + 1);
            if (v159 <= 0xFFFFFFFFFFFFFFF7 && v159 + 8 <= *(a2 + 2))
            {
              *(v106 - 1) = *(*a2 + v159);
LABEL_202:
              *(a2 + 1) += 8;
            }

            else
            {
LABEL_200:
              *(a2 + 24) = 1;
            }

            goto LABEL_203;
          }

          v119 = *(this + 10);
          v120 = v105 - v119;
          v121 = (v105 - v119) >> 3;
          v122 = v121 + 1;
          if (!((v121 + 1) >> 61))
          {
            v123 = v104 - v119;
            if (v123 >> 2 > v122)
            {
              v122 = v123 >> 2;
            }

            if (v123 >= 0x7FFFFFFFFFFFFFF8)
            {
              v124 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v124 = v122;
            }

            if (v124)
            {
              sub_25AD28710(v124);
            }

            v143 = (v105 - v119) >> 3;
            v144 = (8 * v121);
            v145 = (8 * v121 - 8 * v143);
            *v144 = 0;
            v106 = v144 + 1;
            memcpy(v145, v119, v120);
            v146 = *(this + 10);
            *(this + 10) = v145;
            *(this + 11) = v106;
            *(this + 12) = 0;
            if (v146)
            {
              operator delete(v146);
            }

            goto LABEL_188;
          }

          goto LABEL_211;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_209;
            }

            v44 = *(a2 + 1);
            v45 = *(a2 + 2);
            while (v44 < v45 && (*(a2 + 24) & 1) == 0)
            {
              v47 = *(this + 8);
              v46 = *(this + 9);
              if (v47 >= v46)
              {
                v49 = *(this + 7);
                v50 = v47 - v49;
                v51 = (v47 - v49) >> 3;
                v52 = v51 + 1;
                if ((v51 + 1) >> 61)
                {
                  goto LABEL_211;
                }

                v53 = v46 - v49;
                if (v53 >> 2 > v52)
                {
                  v52 = v53 >> 2;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v54 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v54 = v52;
                }

                if (v54)
                {
                  sub_25AD28710(v54);
                }

                v55 = (v47 - v49) >> 3;
                v56 = (8 * v51);
                v57 = (8 * v51 - 8 * v55);
                *v56 = 0;
                v48 = v56 + 1;
                memcpy(v57, v49, v50);
                v58 = *(this + 7);
                *(this + 7) = v57;
                *(this + 8) = v48;
                *(this + 9) = 0;
                if (v58)
                {
                  operator delete(v58);
                }
              }

              else
              {
                *v47 = 0;
                v48 = v47 + 8;
              }

              *(this + 8) = v48;
              v59 = *(a2 + 1);
              if (v59 > 0xFFFFFFFFFFFFFFF7 || v59 + 8 > *(a2 + 2))
              {
                goto LABEL_132;
              }

              *(v48 - 1) = *(*a2 + v59);
              v45 = *(a2 + 2);
              v44 = *(a2 + 1) + 8;
              *(a2 + 1) = v44;
            }

            goto LABEL_133;
          }

          v108 = *(this + 8);
          v107 = *(this + 9);
          if (v108 < v107)
          {
            *v108 = 0;
            v106 = v108 + 8;
LABEL_191:
            *(this + 8) = v106;
            goto LABEL_198;
          }

          v125 = *(this + 7);
          v126 = v108 - v125;
          v127 = (v108 - v125) >> 3;
          v128 = v127 + 1;
          if (!((v127 + 1) >> 61))
          {
            v129 = v107 - v125;
            if (v129 >> 2 > v128)
            {
              v128 = v129 >> 2;
            }

            if (v129 >= 0x7FFFFFFFFFFFFFF8)
            {
              v130 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v130 = v128;
            }

            if (v130)
            {
              sub_25AD28710(v130);
            }

            v147 = (v108 - v125) >> 3;
            v148 = (8 * v127);
            v149 = (8 * v127 - 8 * v147);
            *v148 = 0;
            v106 = v148 + 1;
            memcpy(v149, v125, v126);
            v150 = *(this + 7);
            *(this + 7) = v149;
            *(this + 8) = v106;
            *(this + 9) = 0;
            if (v150)
            {
              operator delete(v150);
            }

            goto LABEL_191;
          }

          goto LABEL_211;
        case 5u:
          *(this + 86) |= 2u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 14) = *(*a2 + v25);
          goto LABEL_202;
        case 6u:
          *(this + 86) |= 1u;
          v85 = *(a2 + 1);
          if (v85 > 0xFFFFFFFFFFFFFFF7 || v85 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 13) = *(*a2 + v85);
          goto LABEL_202;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_209;
            }

            v86 = *(a2 + 1);
            v87 = *(a2 + 2);
            while (v86 < v87 && (*(a2 + 24) & 1) == 0)
            {
              v89 = *(this + 5);
              v88 = *(this + 6);
              if (v89 >= v88)
              {
                v91 = *(this + 4);
                v92 = v89 - v91;
                v93 = (v89 - v91) >> 3;
                v94 = v93 + 1;
                if ((v93 + 1) >> 61)
                {
                  goto LABEL_211;
                }

                v95 = v88 - v91;
                if (v95 >> 2 > v94)
                {
                  v94 = v95 >> 2;
                }

                if (v95 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v96 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v96 = v94;
                }

                if (v96)
                {
                  sub_25AD28710(v96);
                }

                v97 = (v89 - v91) >> 3;
                v98 = (8 * v93);
                v99 = (8 * v93 - 8 * v97);
                *v98 = 0;
                v90 = v98 + 1;
                memcpy(v99, v91, v92);
                v100 = *(this + 4);
                *(this + 4) = v99;
                *(this + 5) = v90;
                *(this + 6) = 0;
                if (v100)
                {
                  operator delete(v100);
                }
              }

              else
              {
                *v89 = 0;
                v90 = v89 + 8;
              }

              *(this + 5) = v90;
              v101 = *(a2 + 1);
              if (v101 > 0xFFFFFFFFFFFFFFF7 || v101 + 8 > *(a2 + 2))
              {
                goto LABEL_132;
              }

              *(v90 - 1) = *(*a2 + v101);
              v87 = *(a2 + 2);
              v86 = *(a2 + 1) + 8;
              *(a2 + 1) = v86;
            }

            goto LABEL_133;
          }

          v118 = *(this + 5);
          v117 = *(this + 6);
          if (v118 < v117)
          {
            *v118 = 0;
            v106 = v118 + 8;
LABEL_197:
            *(this + 5) = v106;
            goto LABEL_198;
          }

          v137 = *(this + 4);
          v138 = v118 - v137;
          v139 = (v118 - v137) >> 3;
          v140 = v139 + 1;
          if (!((v139 + 1) >> 61))
          {
            v141 = v117 - v137;
            if (v141 >> 2 > v140)
            {
              v140 = v141 >> 2;
            }

            if (v141 >= 0x7FFFFFFFFFFFFFF8)
            {
              v142 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v142 = v140;
            }

            if (v142)
            {
              sub_25AD28710(v142);
            }

            v155 = (v118 - v137) >> 3;
            v156 = (8 * v139);
            v157 = (8 * v139 - 8 * v155);
            *v156 = 0;
            v106 = v156 + 1;
            memcpy(v157, v137, v138);
            v158 = *(this + 4);
            *(this + 4) = v157;
            *(this + 5) = v106;
            *(this + 6) = 0;
            if (v158)
            {
              operator delete(v158);
            }

            goto LABEL_197;
          }

          goto LABEL_211;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_209;
            }

            v60 = *(a2 + 1);
            v61 = *(a2 + 2);
            while (v60 < v61 && (*(a2 + 24) & 1) == 0)
            {
              v63 = *(this + 2);
              v62 = *(this + 3);
              if (v63 >= v62)
              {
                v65 = *(this + 1);
                v66 = v63 - v65;
                v67 = (v63 - v65) >> 3;
                v68 = v67 + 1;
                if ((v67 + 1) >> 61)
                {
                  goto LABEL_211;
                }

                v69 = v62 - v65;
                if (v69 >> 2 > v68)
                {
                  v68 = v69 >> 2;
                }

                if (v69 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v70 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v68;
                }

                if (v70)
                {
                  sub_25AD28710(v70);
                }

                v71 = (v63 - v65) >> 3;
                v72 = (8 * v67);
                v73 = (8 * v67 - 8 * v71);
                *v72 = 0;
                v64 = v72 + 1;
                memcpy(v73, v65, v66);
                v74 = *(this + 1);
                *(this + 1) = v73;
                *(this + 2) = v64;
                *(this + 3) = 0;
                if (v74)
                {
                  operator delete(v74);
                }
              }

              else
              {
                *v63 = 0;
                v64 = v63 + 8;
              }

              *(this + 2) = v64;
              v75 = *(a2 + 1);
              if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(a2 + 2))
              {
LABEL_132:
                *(a2 + 24) = 1;
                goto LABEL_133;
              }

              *(v64 - 1) = *(*a2 + v75);
              v61 = *(a2 + 2);
              v60 = *(a2 + 1) + 8;
              *(a2 + 1) = v60;
            }

            goto LABEL_133;
          }

          v116 = *(this + 2);
          v115 = *(this + 3);
          if (v116 >= v115)
          {
            v131 = *(this + 1);
            v132 = v116 - v131;
            v133 = (v116 - v131) >> 3;
            v134 = v133 + 1;
            if ((v133 + 1) >> 61)
            {
LABEL_211:
              sub_25AAE66B8();
            }

            v135 = v115 - v131;
            if (v135 >> 2 > v134)
            {
              v134 = v135 >> 2;
            }

            if (v135 >= 0x7FFFFFFFFFFFFFF8)
            {
              v136 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v136 = v134;
            }

            if (v136)
            {
              sub_25AD28710(v136);
            }

            v151 = (v116 - v131) >> 3;
            v152 = (8 * v133);
            v153 = (8 * v133 - 8 * v151);
            *v152 = 0;
            v106 = v152 + 1;
            memcpy(v153, v131, v132);
            v154 = *(this + 1);
            *(this + 1) = v153;
            *(this + 2) = v106;
            *(this + 3) = 0;
            if (v154)
            {
              operator delete(v154);
            }
          }

          else
          {
            *v116 = 0;
            v106 = v116 + 8;
          }

          *(this + 2) = v106;
          goto LABEL_198;
        case 9u:
          *(this + 86) |= 0x80u;
          v103 = *(a2 + 1);
          if (v103 > 0xFFFFFFFFFFFFFFF7 || v103 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 20) = *(*a2 + v103);
          goto LABEL_202;
        case 0xAu:
          *(this + 86) |= 0x20u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 18) = *(*a2 + v27);
          goto LABEL_202;
        case 0xBu:
          *(this + 86) |= 0x40u;
          v102 = *(a2 + 1);
          if (v102 > 0xFFFFFFFFFFFFFFF7 || v102 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 19) = *(*a2 + v102);
          goto LABEL_202;
        case 0xCu:
          *(this + 86) |= 8u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 16) = *(*a2 + v24);
          goto LABEL_202;
        case 0xDu:
          *(this + 86) |= 4u;
          v26 = *(a2 + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
          {
            goto LABEL_200;
          }

          *(this + 15) = *(*a2 + v26);
          goto LABEL_202;
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
        goto LABEL_207;
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
LABEL_209:
      v160 = 0;
      return v160 & 1;
    }

LABEL_203:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  while (v2 < v3 && (*(a2 + 24) & 1) == 0);
LABEL_207:
  v160 = v4 ^ 1;
  return v160 & 1;
}

uint64_t CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 172);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 136));
    v4 = *(v3 + 172);
  }

  if ((v4 & 0x100) != 0)
  {
    v5 = *(v3 + 168);
    this = PB::Writer::writeVarInt(a2);
  }

  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::write(a2, v8);
  }

  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::write(a2, v11);
  }

  v12 = *(v3 + 172);
  if ((v12 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 112));
    v12 = *(v3 + 172);
  }

  if (v12)
  {
    this = PB::Writer::write(a2, *(v3 + 104));
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15);
  }

  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  while (v16 != v17)
  {
    v18 = *v16++;
    this = PB::Writer::write(a2, v18);
  }

  v19 = *(v3 + 172);
  if ((v19 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 160));
    v19 = *(v3 + 172);
    if ((v19 & 0x20) == 0)
    {
LABEL_23:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }
  }

  else if ((v19 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  this = PB::Writer::write(a2, *(v3 + 144));
  v19 = *(v3 + 172);
  if ((v19 & 0x40) == 0)
  {
LABEL_24:
    if ((v19 & 8) == 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    this = PB::Writer::write(a2, *(v3 + 128));
    if ((*(v3 + 172) & 4) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 152));
  v19 = *(v3 + 172);
  if ((v19 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((v19 & 4) == 0)
  {
    return this;
  }

LABEL_31:
  v20 = *(v3 + 120);

  return PB::Writer::write(a2, v20);
}

BOOL CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 172);
  v3 = *(a2 + 172);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 172) & 0x100) != 0)
  {
    if ((*(a2 + 172) & 0x100) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((*(a2 + 172) & 0x100) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v6 = *(a2 + 80);
  if (v4 - v5 != *(a2 + 88) - v6)
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

  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a2 + 56);
  if (v7 - v8 != *(a2 + 64) - v9)
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

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 112) != *(a2 + 112))
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
    if ((v3 & 1) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a2 + 32);
  if (v10 - v11 != *(a2 + 40) - v12)
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

  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  v15 = *(a2 + 8);
  if (v13 - v14 != *(a2 + 16) - v15)
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
    if ((v3 & 0x80) == 0 || *(a1 + 160) != *(a2 + 160))
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
    if ((v3 & 0x20) == 0 || *(a1 + 144) != *(a2 + 144))
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
    if ((v3 & 0x40) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  v16 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 120) == *(a2 + 120);
  }

  return v16;
}

uint64_t CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::hash_value(CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate *this)
{
  if ((*(this + 86) & 0x10) != 0)
  {
    if (*(this + 17) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 17);
    }

    if ((*(this + 86) & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 86) & 0x100) != 0)
    {
LABEL_3:
      v3 = *(this + 42);
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  v4 = *(this + 10);
  v5 = *(this + 11);
  v6 = PBHashBytes();
  v7 = *(this + 7);
  v8 = *(this + 8);
  v9 = PBHashBytes();
  v10 = *(this + 86);
  if ((v10 & 2) != 0)
  {
    if (*(this + 14) == 0.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(this + 14);
    }

    if (v10)
    {
      goto LABEL_11;
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = 0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (*(this + 13) == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 13);
  }

LABEL_19:
  v13 = *(this + 4);
  v14 = *(this + 5);
  v15 = PBHashBytes();
  v16 = *(this + 1);
  v17 = *(this + 2);
  v18 = PBHashBytes();
  v19 = *(this + 86);
  if ((v19 & 0x80) == 0)
  {
    v20 = 0.0;
    if ((v19 & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_36:
    v21 = 0.0;
    if ((v19 & 0x40) != 0)
    {
      goto LABEL_24;
    }

LABEL_37:
    v22 = 0.0;
    if ((v19 & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  v20 = *(this + 20);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v19 & 0x20) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  v21 = *(this + 18);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((v19 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_24:
  v22 = *(this + 19);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  if ((v19 & 8) != 0)
  {
LABEL_27:
    v23 = *(this + 16);
    if (v23 == 0.0)
    {
      v23 = 0.0;
    }

    if ((v19 & 4) != 0)
    {
      goto LABEL_30;
    }

LABEL_39:
    v24 = 0.0;
    return v3 ^ v2 ^ v6 ^ v9 ^ v11 ^ v12 ^ v15 ^ v18 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24;
  }

LABEL_38:
  v23 = 0.0;
  if ((v19 & 4) == 0)
  {
    goto LABEL_39;
  }

LABEL_30:
  v24 = *(this + 15);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  return v3 ^ v2 ^ v6 ^ v9 ^ v11 ^ v12 ^ v15 ^ v18 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24;
}

double CMMsl::HeadToHeadsetTransformationEstimate::HeadToHeadsetTransformationEstimate(CMMsl::HeadToHeadsetTransformationEstimate *this)
{
  *this = &unk_286C20A10;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_286C20A10;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::HeadToHeadsetTransformationEstimate::~HeadToHeadsetTransformationEstimate(CMMsl::HeadToHeadsetTransformationEstimate *this)
{
  *this = &unk_286C20A10;
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
  CMMsl::HeadToHeadsetTransformationEstimate::~HeadToHeadsetTransformationEstimate(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::HeadToHeadsetTransformationEstimate *CMMsl::HeadToHeadsetTransformationEstimate::HeadToHeadsetTransformationEstimate(CMMsl::HeadToHeadsetTransformationEstimate *this, const CMMsl::HeadToHeadsetTransformationEstimate *a2)
{
  *this = &unk_286C20A10;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((*(a2 + 80) & 4) != 0)
  {
    v5 = *(a2 + 9);
    *(this + 80) = 4;
    *(this + 9) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v6 = *(a2 + 80);
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 + 8);
    *(this + 80) |= 2u;
    *(this + 8) = v7;
    v6 = *(a2 + 80);
  }

  if (v6)
  {
    v8 = *(a2 + 7);
    *(this + 80) |= 1u;
    *(this + 7) = v8;
  }

  return this;
}

uint64_t CMMsl::HeadToHeadsetTransformationEstimate::operator=(uint64_t a1, const CMMsl::HeadToHeadsetTransformationEstimate *a2)
{
  if (a1 != a2)
  {
    CMMsl::HeadToHeadsetTransformationEstimate::HeadToHeadsetTransformationEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v3;
    v4 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v14;
    v6 = v13;
    v7 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v13 = v8;
    v14 = v5;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::HeadToHeadsetTransformationEstimate::~HeadToHeadsetTransformationEstimate(v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::HeadToHeadsetTransformationEstimate *a2, CMMsl::HeadToHeadsetTransformationEstimate *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

uint64_t CMMsl::HeadToHeadsetTransformationEstimate::HeadToHeadsetTransformationEstimate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20A10;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 72) = *(a2 + 72);
  sub_25AD28758(a1 + 32, (a2 + 32));
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::HeadToHeadsetTransformationEstimate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::HeadToHeadsetTransformationEstimate::HeadToHeadsetTransformationEstimate(v11, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v3;
    v4 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v14;
    v6 = v13;
    v7 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v13 = v8;
    v14 = v5;
    v9 = *(a1 + 56);
    *(a1 + 56) = v15;
    v15 = v9;
    CMMsl::HeadToHeadsetTransformationEstimate::~HeadToHeadsetTransformationEstimate(v11);
  }

  return a1;
}

uint64_t CMMsl::HeadToHeadsetTransformationEstimate::formatText(CMMsl::HeadToHeadsetTransformationEstimate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 80))
  {
    PB::TextFormatter::format(a2, "lastUpdateTimestamp", *(this + 7));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "stateCov", v7);
  }

  if ((*(this + 80) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "stateCovTrace", *(this + 8));
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "stateQfb", v10);
  }

  if ((*(this + 80) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 9));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HeadToHeadsetTransformationEstimate::readFrom(CMMsl::HeadToHeadsetTransformationEstimate *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 2)
    {
      if (v23 != 1)
      {
        if (v23 != 2)
        {
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_114;
          }

          goto LABEL_108;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_114;
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
                goto LABEL_116;
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
LABEL_79:
              *(a2 + 24) = 1;
              break;
            }

            *(v29 - 1) = *(*a2 + v40);
            v26 = *(a2 + 2);
            v25 = *(a2 + 1) + 8;
            *(a2 + 1) = v25;
          }

LABEL_80:
          PB::Reader::recallMark();
          goto LABEL_108;
        }

        v63 = *(this + 5);
        v62 = *(this + 6);
        if (v63 >= v62)
        {
          v70 = *(this + 4);
          v71 = v63 - v70;
          v72 = (v63 - v70) >> 3;
          v73 = v72 + 1;
          if ((v72 + 1) >> 61)
          {
LABEL_116:
            sub_25AAE66B8();
          }

          v74 = v62 - v70;
          if (v74 >> 2 > v73)
          {
            v73 = v74 >> 2;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF8)
          {
            v75 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v75 = v73;
          }

          if (v75)
          {
            sub_25AD28710(v75);
          }

          v80 = (v63 - v70) >> 3;
          v81 = (8 * v72);
          v82 = (8 * v72 - 8 * v80);
          *v81 = 0;
          v61 = v81 + 1;
          memcpy(v82, v70, v71);
          v83 = *(this + 4);
          *(this + 4) = v82;
          *(this + 5) = v61;
          *(this + 6) = 0;
          if (v83)
          {
            operator delete(v83);
          }
        }

        else
        {
          *v63 = 0;
          v61 = v63 + 8;
        }

        *(this + 5) = v61;
        goto LABEL_103;
      }

      *(this + 80) |= 4u;
      v58 = *(a2 + 1);
      if (v58 > 0xFFFFFFFFFFFFFFF7 || v58 + 8 > *(a2 + 2))
      {
        goto LABEL_105;
      }

      *(this + 9) = *(*a2 + v58);
    }

    else
    {
      switch(v23)
      {
        case 3:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_114:
              v85 = 0;
              return v85 & 1;
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
                  goto LABEL_116;
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
                goto LABEL_79;
              }

              *(v45 - 1) = *(*a2 + v56);
              v42 = *(a2 + 2);
              v41 = *(a2 + 1) + 8;
              *(a2 + 1) = v41;
            }

            goto LABEL_80;
          }

          v60 = *(this + 2);
          v59 = *(this + 3);
          if (v60 >= v59)
          {
            v64 = *(this + 1);
            v65 = v60 - v64;
            v66 = (v60 - v64) >> 3;
            v67 = v66 + 1;
            if ((v66 + 1) >> 61)
            {
              goto LABEL_116;
            }

            v68 = v59 - v64;
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

            v76 = (v60 - v64) >> 3;
            v77 = (8 * v66);
            v78 = (8 * v66 - 8 * v76);
            *v77 = 0;
            v61 = v77 + 1;
            memcpy(v78, v64, v65);
            v79 = *(this + 1);
            *(this + 1) = v78;
            *(this + 2) = v61;
            *(this + 3) = 0;
            if (v79)
            {
              operator delete(v79);
            }
          }

          else
          {
            *v60 = 0;
            v61 = v60 + 8;
          }

          *(this + 2) = v61;
LABEL_103:
          v84 = *(a2 + 1);
          if (v84 > 0xFFFFFFFFFFFFFFF7 || v84 + 8 > *(a2 + 2))
          {
            goto LABEL_105;
          }

          *(v61 - 1) = *(*a2 + v84);
          break;
        case 4:
          *(this + 80) |= 2u;
          v57 = *(a2 + 1);
          if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(a2 + 2))
          {
            goto LABEL_105;
          }

          *(this + 8) = *(*a2 + v57);
          break;
        case 5:
          *(this + 80) |= 1u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
LABEL_105:
            *(a2 + 24) = 1;
            goto LABEL_108;
          }

          *(this + 7) = *(*a2 + v24);
          break;
        default:
          goto LABEL_17;
      }
    }

    *(a2 + 1) += 8;
LABEL_108:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v85 = v4 ^ 1;
  return v85 & 1;
}

uint64_t CMMsl::HeadToHeadsetTransformationEstimate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 80) & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 72));
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 80);
  if ((v10 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 64));
    v10 = *(v3 + 80);
  }

  if (v10)
  {
    v11 = *(v3 + 56);

    return PB::Writer::write(a2, v11);
  }

  return this;
}

BOOL CMMsl::HeadToHeadsetTransformationEstimate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 80) & 4) != 0)
  {
    if ((*(a2 + 80) & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 4) != 0)
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

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
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

  if ((*(a1 + 80) & 2) != 0)
  {
    if ((*(a2 + 80) & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 2) != 0)
  {
    return 0;
  }

  v8 = (*(a2 + 80) & 1) == 0;
  if (*(a1 + 80))
  {
    return (*(a2 + 80) & 1) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v8;
}

uint64_t CMMsl::HeadToHeadsetTransformationEstimate::hash_value(CMMsl::HeadToHeadsetTransformationEstimate *this)
{
  if ((*(this + 80) & 4) != 0)
  {
    if (*(this + 9) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 9);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = PBHashBytes();
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = PBHashBytes();
  if ((*(this + 80) & 2) != 0)
  {
    v9 = *(this + 8);
    if (v9 == 0.0)
    {
      v9 = 0.0;
    }

    if (*(this + 80))
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = 0.0;
    return v5 ^ v2 ^ v8 ^ *&v9 ^ *&v10;
  }

  v9 = 0.0;
  if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = *(this + 7);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return v5 ^ v2 ^ v8 ^ *&v9 ^ *&v10;
}

void *CMMsl::HeadTrackingBehaviorUpdate::HeadTrackingBehaviorUpdate(void *this)
{
  *this = &unk_286C20A48;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C20A48;
  this[1] = 0;
  return this;
}

void CMMsl::HeadTrackingBehaviorUpdate::~HeadTrackingBehaviorUpdate(CMMsl::HeadTrackingBehaviorUpdate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::HeadTrackingBehaviorUpdate::HeadTrackingBehaviorUpdate(uint64_t this, const CMMsl::HeadTrackingBehaviorUpdate *a2)
{
  *this = &unk_286C20A48;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_286C20A48;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::HeadTrackingBehaviorUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_286C20A48;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_286C20A48;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::HeadTrackingBehaviorUpdate *a2, CMMsl::HeadTrackingBehaviorUpdate *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::HeadTrackingBehaviorUpdate::HeadTrackingBehaviorUpdate(uint64_t result, uint64_t a2)
{
  *result = &unk_286C20A48;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C20A48;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::HeadTrackingBehaviorUpdate::formatText(CMMsl::HeadTrackingBehaviorUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "trackingBehavior");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HeadTrackingBehaviorUpdate::readFrom(CMMsl::HeadTrackingBehaviorUpdate *this, PB::Reader *a2)
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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
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
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v32 = (v23 + v22);
          v33 = v3 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
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
              LODWORD(v26) = 0;
              goto LABEL_41;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_41:
          v3 = v35;
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

LABEL_42:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::HeadTrackingBehaviorUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::HeadTrackingBehaviorUpdate::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::HeadTrackingBehaviorUpdate::hash_value(CMMsl::HeadTrackingBehaviorUpdate *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

void *CMMsl::HeadTrackingClientModeUpdate::HeadTrackingClientModeUpdate(void *this)
{
  *this = &unk_286C20A80;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C20A80;
  this[1] = 0;
  return this;
}

void CMMsl::HeadTrackingClientModeUpdate::~HeadTrackingClientModeUpdate(CMMsl::HeadTrackingClientModeUpdate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::HeadTrackingClientModeUpdate::HeadTrackingClientModeUpdate(uint64_t this, const CMMsl::HeadTrackingClientModeUpdate *a2)
{
  *this = &unk_286C20A80;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_286C20A80;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::HeadTrackingClientModeUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_286C20A80;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_286C20A80;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::HeadTrackingClientModeUpdate *a2, CMMsl::HeadTrackingClientModeUpdate *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::HeadTrackingClientModeUpdate::HeadTrackingClientModeUpdate(uint64_t result, uint64_t a2)
{
  *result = &unk_286C20A80;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_286C20A80;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::HeadTrackingClientModeUpdate::formatText(CMMsl::HeadTrackingClientModeUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "clientMode");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HeadTrackingClientModeUpdate::readFrom(CMMsl::HeadTrackingClientModeUpdate *this, PB::Reader *a2)
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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
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
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v32 = (v23 + v22);
          v33 = v3 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
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
              LODWORD(v26) = 0;
              goto LABEL_41;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_41:
          v3 = v35;
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

LABEL_42:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
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
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::HeadTrackingClientModeUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL CMMsl::HeadTrackingClientModeUpdate::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::HeadTrackingClientModeUpdate::hash_value(CMMsl::HeadTrackingClientModeUpdate *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::HeartRateReference::HeartRateReference(uint64_t this)
{
  *this = &unk_286C20AB8;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_286C20AB8;
  *(this + 32) = 0;
  return this;
}

void CMMsl::HeartRateReference::~HeartRateReference(CMMsl::HeartRateReference *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::HeartRateReference::HeartRateReference(CMMsl::HeartRateReference *this, const CMMsl::HeartRateReference *a2)
{
  *this = &unk_286C20AB8;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = v4;
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
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 32) = v3 | 2;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::HeartRateReference::operator=(uint64_t a1, const CMMsl::HeartRateReference *a2)
{
  if (a1 != a2)
  {
    CMMsl::HeartRateReference::HeartRateReference(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::HeartRateReference *a2, CMMsl::HeartRateReference *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::HeartRateReference::HeartRateReference(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20AB8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C20AB8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::HeartRateReference::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 32);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[0] = &unk_286C20AB8;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 32) = v3;
    *(a1 + 16) = v7;
    v10 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::HeartRateReference::formatText(CMMsl::HeartRateReference *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    v6 = *(this + 1);
    PB::TextFormatter::format(a2, "bpm");
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "globalMachtime", *(this + 2));
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "localMachtime", *(this + 3));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HeartRateReference::readFrom(CMMsl::HeartRateReference *this, PB::Reader *a2)
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
        goto LABEL_55;
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
        goto LABEL_55;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_35;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_45:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_51;
      }

      if (v22 == 1)
      {
        *(this + 32) |= 1u;
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
              goto LABEL_50;
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
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_49:
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

LABEL_50:
        *(this + 1) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(a2 + 1);
      }

LABEL_51:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_55;
      }
    }

    *(this + 32) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_35:
      *(a2 + 24) = 1;
      goto LABEL_51;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_45;
  }

LABEL_55:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::HeartRateReference::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 32) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v5 = *(this + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
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

  return PB::Writer::write(a2, v6);
}

BOOL CMMsl::HeartRateReference::operator==(uint64_t a1, uint64_t a2)
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

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::HeartRateReference::hash_value(CMMsl::HeartRateReference *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if ((*(this + 32) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 3);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if ((*(this + 32) & 2) != 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      v3 = 0.0;
      return *&v2 ^ v1 ^ *&v3;
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

  v2 = 0.0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3;
}

double CMMsl::HeartRateSourceDevice::HeartRateSourceDevice(CMMsl::HeartRateSourceDevice *this)
{
  *this = &unk_286C20AF0;
  *(this + 15) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_286C20AF0;
  *(this + 15) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void CMMsl::HeartRateSourceDevice::~HeartRateSourceDevice(CMMsl::HeartRateSourceDevice *this)
{
  *this = &unk_286C20AF0;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    sub_25AD28A30(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    sub_25AD28A30(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    sub_25AD28A30(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    sub_25AD28A30(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    sub_25AD28A30(v6);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::HeartRateSourceDevice::~HeartRateSourceDevice(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::HeartRateSourceDevice::HeartRateSourceDevice(uint64_t this, const CMMsl::HeartRateSourceDevice *a2)
{
  *this = &unk_286C20AF0;
  *(this + 8) = 0u;
  *(this + 60) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if ((*(a2 + 60) & 2) != 0)
  {
    v3 = *(a2 + 14);
    *(this + 60) = 2;
    *(this + 56) = v3;
    v2 = 3;
    if ((*(a2 + 60) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 60))
  {
LABEL_5:
    v4 = *(a2 + 6);
    *(this + 60) = v2;
    *(this + 48) = v4;
  }

LABEL_6:
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::HeartRateSourceDevice::operator=(uint64_t a1, const CMMsl::HeartRateSourceDevice *a2)
{
  if (a1 != a2)
  {
    CMMsl::HeartRateSourceDevice::HeartRateSourceDevice(&v10, a2);
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);
    v5 = v15;
    *(a1 + 48) = v14;
    *(a1 + 56) = v5;
    v14 = v4;
    v15 = v3;
    v6 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::HeartRateSourceDevice::~HeartRateSourceDevice(&v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::HeartRateSourceDevice *a2, CMMsl::HeartRateSourceDevice *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  return result;
}

uint64_t CMMsl::HeartRateSourceDevice::HeartRateSourceDevice(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20AF0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  if (v6)
  {
    sub_25AD28A30(v6);
  }

  v7 = *(a2 + 32);
  *(a2 + 32) = 0;
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;
  if (v8)
  {
    sub_25AD28A30(v8);
  }

  v9 = *(a2 + 16);
  *(a2 + 16) = 0;
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;
  if (v10)
  {
    sub_25AD28A30(v10);
  }

  v11 = *(a2 + 8);
  *(a2 + 8) = 0;
  v12 = *v4;
  *v4 = v11;
  if (v12)
  {
    sub_25AD28A30(v12);
  }

  v13 = *(a2 + 40);
  *(a2 + 40) = 0;
  v14 = *(a1 + 40);
  *(a1 + 40) = v13;
  if (v14)
  {
    sub_25AD28A30(v14);
  }

  return a1;
}

uint64_t CMMsl::HeartRateSourceDevice::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::HeartRateSourceDevice::HeartRateSourceDevice(&v10, a2);
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);
    v5 = v15;
    *(a1 + 48) = v14;
    *(a1 + 56) = v5;
    v14 = v4;
    v15 = v3;
    v6 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::HeartRateSourceDevice::~HeartRateSourceDevice(&v10);
  }

  return a1;
}

uint64_t CMMsl::HeartRateSourceDevice::formatText(CMMsl::HeartRateSourceDevice *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 60) & 2) != 0)
  {
    v5 = *(this + 14);
    PB::TextFormatter::format(a2, "dataSource");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 60))
  {
    PB::TextFormatter::format(a2, "startTime", *(this + 6));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HeartRateSourceDevice::readFrom(CMMsl::HeartRateSourceDevice *this, PB::Reader *a2)
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
          *(this + 60) |= 2u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v33 = 0;
            v34 = 0;
            v28 = 0;
            v35 = (v25 + v24);
            v18 = v23 >= v24;
            v36 = v23 - v24;
            if (!v18)
            {
              v36 = 0;
            }

            v37 = v24 + 1;
            while (1)
            {
              if (!v36)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_59;
              }

              v38 = *v35;
              *(a2 + 1) = v37;
              v28 |= (v38 & 0x7F) << v33;
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
LABEL_54:
                LODWORD(v28) = 0;
                goto LABEL_59;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_54;
              }
            }
          }

LABEL_59:
          *(this + 14) = v28;
          goto LABEL_41;
        case 2:
          *(this + 60) |= 1u;
          v32 = *(a2 + 1);
          if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(a2 + 2))
          {
            *(this + 6) = *(*a2 + v32);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_41;
        case 3:
          operator new();
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        operator new();
      }

      if (v22 == 7)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 4)
      {
        operator new();
      }

      if (v22 == 5)
      {
        operator new();
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v40 = 0;
      return v40 & 1;
    }

LABEL_41:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::HeartRateSourceDevice::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 56);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 60);
  }

  if (v4)
  {
    this = PB::Writer::write(a2, *(v3 + 48));
  }

  if (*(v3 + 24))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 32))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 40))
  {

    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::HeartRateSourceDevice::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  if ((*(a1 + 60) & 2) != 0)
  {
    if ((*(a2 + 60) & 2) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 60))
  {
    if ((*(a2 + 60) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if (*(a2 + 60))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = *(v6 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v6 + 8);
    }

    if (v8 != v9)
    {
      return 0;
    }

    v11 = v7 >= 0 ? *(a1 + 24) : *v5;
    v12 = v10 >= 0 ? *(a2 + 24) : *v6;
    if (memcmp(v11, v12, v8))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  if (v14)
  {
    if (!v15 || !sub_25AAEC4C4(v14, v15))
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(a1 + 16);
  v17 = *(a2 + 16);
  if (v16)
  {
    if (!v17 || !sub_25AAEC4C4(v16, v17))
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = *(a1 + 8);
  v19 = *(a2 + 8);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if (!v19 || !sub_25AAEC4C4(v18, v19))
  {
    return 0;
  }

LABEL_45:
  v20 = *(a1 + 40);
  v21 = *(a2 + 40);
  result = (v20 | v21) == 0;
  if (v20 && v21)
  {
    v22 = *(a1 + 40);

    return sub_25AAEC4C4(v22, v21);
  }

  return result;
}

unint64_t CMMsl::HeartRateSourceDevice::hash_value(CMMsl::HeartRateSourceDevice *this)
{
  if ((*(this + 60) & 2) != 0)
  {
    v2 = *(this + 14);
    if (*(this + 60))
    {
LABEL_3:
      if (*(this + 6) == 0.0)
      {
        v3 = 0;
      }

      else
      {
        v3 = *(this + 6);
      }

      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
    if (*(this + 60))
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_8:
  v4 = *(this + 3);
  if (v4)
  {
    v5 = sub_25AD28AE4(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = sub_25AD28AE4(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 2);
  if (v8)
  {
    v9 = sub_25AD28AE4(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 1);
  if (v10)
  {
    v11 = sub_25AD28AE4(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 5);
  if (v12)
  {
    v12 = sub_25AD28AE4(v12);
  }

  return v3 ^ v2 ^ v5 ^ v7 ^ v9 ^ v11 ^ v12;
}

void *CMMsl::HgAccel::HgAccel(void *this)
{
  *this = &unk_286C20B28;
  this[1] = 0;
  return this;
}

{
  *this = &unk_286C20B28;
  this[1] = 0;
  return this;
}

void CMMsl::HgAccel::~HgAccel(CMMsl::HgAccel *this)
{
  v2 = *(this + 1);
  *this = &unk_286C20B28;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::HgAccel::~HgAccel(this);

  JUMPOUT(0x25F8548F0);
}

void *CMMsl::HgAccel::HgAccel(void *this, const CMMsl::HgAccel *a2)
{
  *this = &unk_286C20B28;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::HgAccel *CMMsl::HgAccel::operator=(const CMMsl::HgAccel *a1, const CMMsl::HgAccel *a2)
{
  if (a1 != a2)
  {
    CMMsl::HgAccel::HgAccel(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::HgAccel::~HgAccel(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::HgAccel *a2, CMMsl::HgAccel *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::HgAccel::HgAccel(void *a1, uint64_t a2)
{
  *a1 = &unk_286C20B28;
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
  *a1 = &unk_286C20B28;
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

uint64_t CMMsl::HgAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C20B28;
    v6[1] = v4;
    CMMsl::HgAccel::~HgAccel(v6);
  }

  return a1;
}

uint64_t CMMsl::HgAccel::formatText(CMMsl::HgAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::HgAccel::readFrom(CMMsl::HgAccel *this, PB::Reader *a2)
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

uint64_t CMMsl::HgAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

BOOL CMMsl::HgAccel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Accel::operator==(v2, v3);
  }

  return result;
}

CMMsl::Accel *CMMsl::HgAccel::hash_value(CMMsl::HgAccel *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::HgAccel::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::IMUComboPacket::IMUComboPacket(uint64_t this)
{
  *this = &unk_286C20B60;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_286C20B60;
  *(this + 44) = 0;
  return this;
}

void CMMsl::IMUComboPacket::~IMUComboPacket(CMMsl::IMUComboPacket *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::IMUComboPacket::IMUComboPacket(CMMsl::IMUComboPacket *this, const CMMsl::IMUComboPacket *a2)
{
  *this = &unk_286C20B60;
  *(this + 11) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 2) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 5) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
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

  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 7) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 44) = v3;
  *(this + 8) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      return *&v4;
    }

    goto LABEL_18;
  }

LABEL_17:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 9) = v4;
  if ((*(a2 + 44) & 0x80) == 0)
  {
    return *&v4;
  }

LABEL_18:
  LODWORD(v4) = *(a2 + 10);
  *(this + 44) = v3 | 0x80;
  *(this + 10) = v4;
  return *&v4;
}

uint64_t CMMsl::IMUComboPacket::operator=(uint64_t a1, const CMMsl::IMUComboPacket *a2)
{
  if (a1 != a2)
  {
    CMMsl::IMUComboPacket::IMUComboPacket(&v7, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    *&v5 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v5;
    LODWORD(v4) = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::IMUComboPacket *a2, CMMsl::IMUComboPacket *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  return result;
}

float CMMsl::IMUComboPacket::IMUComboPacket(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20B60;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

{
  *a1 = &unk_286C20B60;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t CMMsl::IMUComboPacket::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11[0] = &unk_286C20B60;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 40);
    v15 = *(a1 + 44);
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v11[1] = v6;
    v7 = *(a2 + 16);
    v12 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    *(a1 + 44) = v3;
    *(a1 + 16) = v7;
    *(a1 + 32) = v9;
    v13 = v8;
    LODWORD(v8) = *(a1 + 40);
    *(a1 + 40) = v5;
    v14 = v8;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::IMUComboPacket::formatText(CMMsl::IMUComboPacket *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "accelX", *(this + 4));
    v5 = *(this + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelY", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "accelZ", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "gyroX", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "gyroY", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "gyroZ", *(this + 9));
  v5 = *(this + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "temperature", *(this + 10));
  if (*(this + 44))
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::IMUComboPacket::readFrom(CMMsl::IMUComboPacket *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_54:
            *(a2 + 24) = 1;
            goto LABEL_58;
          }

          *(this + 9) = *(*a2 + v2);
LABEL_56:
          v2 = *(a2 + 1) + 4;
LABEL_57:
          *(a2 + 1) = v2;
          goto LABEL_58;
        }

        if (v22 == 8)
        {
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_56;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_56;
        }

        if (v22 == 6)
        {
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_56;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 44) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_56;
      }

      if (v22 == 4)
      {
        *(this + 44) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_56;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 44) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_57;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_56;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_58:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::IMUComboPacket::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
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

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 36));
    if ((*(v3 + 44) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 44);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v5 = *(v3 + 40);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::IMUComboPacket::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  v3 = *(a2 + 44);
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

  if ((v3 & v2 & 0x80) == 0)
  {
    return ((v3 | v2) & 0x80u) == 0;
  }

  return *(a1 + 40) == *(a2 + 40);
}

uint64_t CMMsl::IMUComboPacket::hash_value(CMMsl::IMUComboPacket *this)
{
  if ((*(this + 44) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    v3 = 0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v5 = 0;
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v7 = 0;
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v9 = 0;
    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v11 = 0;
    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_28;
  }

LABEL_6:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v8 = *(this + 7);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v10 = *(this + 8);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((*(this + 44) & 0x40) != 0)
  {
LABEL_18:
    v12 = *(this + 9);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((*(this + 44) & 0x80) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v15 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
  }

LABEL_32:
  v13 = 0;
  if ((*(this + 44) & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v14 = *(this + 10);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
}

uint64_t CMMsl::ISPPacket::ISPPacket(uint64_t this)
{
  *this = &unk_286C20B98;
  *(this + 128) = 0;
  return this;
}

{
  *this = &unk_286C20B98;
  *(this + 128) = 0;
  return this;
}

void CMMsl::ISPPacket::~ISPPacket(CMMsl::ISPPacket *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::ISPPacket::ISPPacket(CMMsl::ISPPacket *this, const CMMsl::ISPPacket *a2)
{
  *this = &unk_286C20B98;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100000) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 26);
    v3 |= 0x100000u;
    *(this + 32) = v3;
    *(this + 26) = v4;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x200000) != 0)
  {
    LODWORD(v4) = *(a2 + 27);
    v3 |= 0x200000u;
    *(this + 32) = v3;
    *(this + 27) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x400000) == 0)
    {
LABEL_8:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x400000) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x400000u;
  *(this + 32) = v3;
  *(this + 28) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x80000) == 0)
  {
LABEL_9:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(v4) = *(a2 + 25);
  v3 |= 0x80000u;
  *(this + 32) = v3;
  *(this + 25) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x10000) == 0)
  {
LABEL_10:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(v4) = *(a2 + 22);
  v3 |= 0x10000u;
  *(this + 32) = v3;
  *(this + 22) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x20000) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 23);
  v3 |= 0x20000u;
  *(this + 32) = v3;
  *(this + 23) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x40000) == 0)
  {
LABEL_12:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 24);
  v3 |= 0x40000u;
  *(this + 32) = v3;
  *(this + 24) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x8000) == 0)
  {
LABEL_13:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 21);
  v3 |= 0x8000u;
  *(this + 32) = v3;
  *(this + 21) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x800) == 0)
  {
LABEL_14:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 17);
  v3 |= 0x800u;
  *(this + 32) = v3;
  *(this + 17) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x1000) == 0)
  {
LABEL_15:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 18);
  v3 |= 0x1000u;
  *(this + 32) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x2000) == 0)
  {
LABEL_16:
    if ((v2 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(v4) = *(a2 + 19);
  v3 |= 0x2000u;
  *(this + 32) = v3;
  *(this + 19) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_17:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = *(a2 + 4);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 4) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_18:
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v5 = *(a2 + 16);
  v3 |= 0x400u;
  *(this + 32) = v3;
  *(this + 16) = v5;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v4 = *(a2 + 2);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 2) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_20:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x80u;
  *(this + 32) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_21:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 14);
  v3 |= 0x100u;
  *(this + 32) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x200u;
  *(this + 32) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 0x4000u;
  *(this + 32) = v3;
  *(this + 20) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x800000) == 0)
  {
LABEL_24:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  LODWORD(v4) = *(a2 + 29);
  v3 |= 0x800000u;
  *(this + 32) = v3;
  *(this + 29) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  LODWORD(v4) = *(a2 + 30);
  v3 |= 0x1000000u;
  *(this + 32) = v3;
  *(this + 30) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v2 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  LODWORD(v4) = *(a2 + 31);
  v3 |= 0x2000000u;
  *(this + 32) = v3;
  *(this + 31) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_27:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  v4 = *(a2 + 3);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 3) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_28:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_29:
    if ((v2 & 0x40) == 0)
    {
      return *&v4;
    }

    goto LABEL_54;
  }

LABEL_53:
  LODWORD(v4) = *(a2 + 11);
  v3 |= 0x20u;
  *(this + 32) = v3;
  *(this + 11) = v4;
  if ((*(a2 + 32) & 0x40) == 0)
  {
    return *&v4;
  }

LABEL_54:
  LODWORD(v4) = *(a2 + 12);
  *(this + 32) = v3 | 0x40;
  *(this + 12) = v4;
  return *&v4;
}

CMMsl *CMMsl::ISPPacket::operator=(CMMsl *a1, const CMMsl::ISPPacket *a2)
{
  if (a1 != a2)
  {
    CMMsl::ISPPacket::ISPPacket(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ISPPacket *a2, CMMsl::ISPPacket *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  LODWORD(v4) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  LODWORD(v7) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v7;
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  LODWORD(v7) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  LODWORD(v7) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v7;
  LODWORD(v7) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v7;
  LODWORD(v7) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v7;
  LODWORD(v7) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  LODWORD(v8) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  LODWORD(v8) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  result = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = result;
  return result;
}

float CMMsl::ISPPacket::ISPPacket(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20B98;
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

CMMsl *CMMsl::ISPPacket::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ISPPacket::ISPPacket(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::ISPPacket::formatText(CMMsl::ISPPacket *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "accelUnfilteredX", *(this + 10));
    v5 = *(this + 32);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "accelUnfilteredY", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "accelUnfilteredZ", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "accelX", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "accelY", *(this + 14));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "accelZ", *(this + 15));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  v6 = *(this + 16);
  PB::TextFormatter::format(a2, "flags");
  v5 = *(this + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "gravityX", *(this + 17));
  v5 = *(this + 32);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "gravityY", *(this + 18));
  v5 = *(this + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "gravityZ", *(this + 19));
  v5 = *(this + 32);
  if ((v5 & 0x4000) == 0)
  {
LABEL_12:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "gyroBiasErrorEstimate", *(this + 20));
  v5 = *(this + 32);
  if ((v5 & 0x8000) == 0)
  {
LABEL_13:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "quaternionPredictedW", *(this + 21));
  v5 = *(this + 32);
  if ((v5 & 0x10000) == 0)
  {
LABEL_14:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "quaternionPredictedX", *(this + 22));
  v5 = *(this + 32);
  if ((v5 & 0x20000) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "quaternionPredictedY", *(this + 23));
  v5 = *(this + 32);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "quaternionPredictedZ", *(this + 24));
  v5 = *(this + 32);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "quaternionW", *(this + 25));
  v5 = *(this + 32);
  if ((v5 & 0x100000) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "quaternionX", *(this + 26));
  v5 = *(this + 32);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "quaternionY", *(this + 27));
  v5 = *(this + 32);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 28));
  v5 = *(this + 32);
  if ((v5 & 0x800000) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "rotationRateX", *(this + 29));
  v5 = *(this + 32);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "rotationRateY", *(this + 30));
  v5 = *(this + 32);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "rotationRateZ", *(this + 31));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_24:
    if ((v5 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_25:
    if ((v5 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "timestampAccel", *(this + 2));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_26:
    if ((v5 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "timestampAccelUnfiltered", *(this + 3));
  if ((*(this + 32) & 8) != 0)
  {
LABEL_27:
    PB::TextFormatter::format(a2, "timestampPrediction", *(this + 4));
  }

LABEL_28:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ISPPacket::readFrom(CMMsl::ISPPacket *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_124:
    v37 = v4 ^ 1;
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
        goto LABEL_124;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_97;
        case 2u:
          *(this + 32) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_113;
        case 3u:
          *(this + 32) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_113;
        case 4u:
          *(this + 32) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 28) = *(*a2 + v2);
          goto LABEL_113;
        case 5u:
          *(this + 32) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_113;
        case 6u:
          *(this + 32) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_113;
        case 7u:
          *(this + 32) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_113;
        case 8u:
          *(this + 32) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_113;
        case 9u:
          *(this + 32) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_113;
        case 0xAu:
          *(this + 32) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_113;
        case 0xBu:
          *(this + 32) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_113;
        case 0xCu:
          *(this + 32) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_113;
        case 0xDu:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_97;
        case 0xEu:
          *(this + 32) |= 0x400u;
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
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_122;
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
                LODWORD(v26) = 0;
LABEL_121:
                v2 = v35;
                goto LABEL_122;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_121;
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
              goto LABEL_122;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_122:
          *(this + 16) = v26;
          break;
        case 0xFu:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_97;
        case 0x10u:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_113;
        case 0x11u:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_113;
        case 0x12u:
          *(this + 32) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_113;
        case 0x13u:
          *(this + 32) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_113;
        case 0x14u:
          *(this + 32) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 29) = *(*a2 + v2);
          goto LABEL_113;
        case 0x15u:
          *(this + 32) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 30) = *(*a2 + v2);
          goto LABEL_113;
        case 0x16u:
          *(this + 32) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 31) = *(*a2 + v2);
          goto LABEL_113;
        case 0x17u:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_97:
          v2 = *(a2 + 1) + 8;
          goto LABEL_114;
        case 0x18u:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_113;
        case 0x19u:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_103;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_113;
        case 0x1Au:
          *(this + 32) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_103:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 12) = *(*a2 + v2);
LABEL_113:
            v2 = *(a2 + 1) + 4;
LABEL_114:
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_115:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_124;
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
        goto LABEL_124;
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
      goto LABEL_115;
    }

    v37 = 0;
  }

  return v37 & 1;
}

uint64_t CMMsl::ISPPacket::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 128);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_4:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 108));
  v4 = *(v3 + 128);
  if ((v4 & 0x400000) == 0)
  {
LABEL_5:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_6:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 100));
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_7:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 92));
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_12:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_13:
    if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 76));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  v5 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 128);
  if ((v4 & 0x4000) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 128);
  if ((v4 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 116));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v4 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 128);
  if ((v4 & 4) == 0)
  {
LABEL_24:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_25:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    this = PB::Writer::write(a2, *(v3 + 44));
    if ((*(v3 + 128) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_53;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_53:
  v6 = *(v3 + 48);

  return PB::Writer::write(a2, v6);
}